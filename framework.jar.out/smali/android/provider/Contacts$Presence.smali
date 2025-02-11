.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1622
    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .locals 1
    .param p0, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    packed-switch p0, :pswitch_data_0

    const v0, #android:drawable@presence_offline#t

    :goto_0
    return v0

    :pswitch_0
    const v0, #android:drawable@presence_online#t

    goto :goto_0

    :pswitch_1
    const v0, #android:drawable@presence_away#t

    goto :goto_0

    :pswitch_2
    const v0, #android:drawable@presence_busy#t

    goto :goto_0

    :pswitch_3
    const v0, #android:drawable@presence_invisible#t

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final setPresenceIcon(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "icon"    # Landroid/widget/ImageView;
    .param p1, "serverStatus"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1671
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1672
    return-void
.end method
