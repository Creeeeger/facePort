.class public final Landroid/app/ActivityManager$TaskDescription$Builder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mIconRes:I

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mNavigationBarColor:I

.field private blacklist mPrimaryColor:I

.field private blacklist mStatusBarColor:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1526
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1527
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1528
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1529
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/ActivityManager$TaskDescription;
    .locals 14

    .line 1605
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 1606
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v3, v0

    :goto_0
    nop

    .line 1607
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    iget v4, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iget v5, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iget v6, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iget v7, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    return-object v0
.end method

.method public whitelist setBackgroundColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1573
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1574
    return-object p0
.end method

.method public whitelist setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "iconRes"    # I

    .line 1550
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1551
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 1538
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1539
    return-object p0
.end method

.method public whitelist setNavigationBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1595
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    .line 1596
    return-object p0
.end method

.method public whitelist setPrimaryColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1561
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1562
    return-object p0
.end method

.method public whitelist setStatusBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 1584
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1585
    return-object p0
.end method
