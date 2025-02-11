.class Landroid/view/WindowManagerPolicyControl$Filter;
.super Ljava/lang/Object;
.source "WindowManagerPolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    .line 381
    iput-object p2, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/view/WindowManagerPolicyControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/ArraySet;
    .param p2, "x1"    # Landroid/util/ArraySet;
    .param p3, "x2"    # Landroid/view/WindowManagerPolicyControl$1;

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerPolicyControl$Filter;

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/WindowManagerPolicyControl$Filter;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerPolicyControl$Filter;

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "=("

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 419
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 420
    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 421
    :cond_0
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 424
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parse(Ljava/lang/String;)Landroid/view/WindowManagerPolicyControl$Filter;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 436
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 448
    :goto_0
    return-object v6

    .line 437
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 438
    .local v5, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 439
    .local v1, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 440
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 441
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 442
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_1
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/view/WindowManagerPolicyControl$Filter;

    invoke-direct {v6, v5, v1}, Landroid/view/WindowManagerPolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 411
    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "whitelist"

    iget-object v1, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 413
    const-string v0, "blacklist"

    iget-object v1, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 414
    return-void
.end method

.method public isEnabledForAll()Z
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 385
    if-nez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v2, :cond_3

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_3

    move v0, v2

    .line 388
    .local v0, "isApp":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v4, "apps"

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    :cond_2
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/view/WindowManagerPolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/view/WindowManagerPolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v3, "apps"

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    .end local v0    # "isApp":Z
    :cond_3
    move v0, v1

    .line 386
    goto :goto_1

    .line 391
    .restart local v0    # "isApp":Z
    :cond_4
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerPolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/WindowManagerPolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 429
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Landroid/view/WindowManagerPolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
