.class public Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final CATEGORY_DEFAULT:I = 0x1

.field private static final CATEGORY_DUAL:I = 0x2

.field private static final DEFAULT_PACKAGES:[Ljava/lang/String;

.field public static final DISABLED_ALL:I = 0x0

.field public static final DISABLED_BY_MODE:I = 0x4e20

.field public static final DISABLED_BY_SUB_USER:I = 0x7530

.field private static final DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

.field private static final DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;

.field public static final PLUGIN_IDENTITY_DIVIDER:I = 0xa

.field public static final TAG:Ljava/lang/String; = "PluginLockInstancePolicy"


# instance fields
.field private final mCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.android.dynamiclock:2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    const-string v1, "com.samsung.android.dynamiclock"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    return-void
.end method

.method private getBaseNumber(I)I
    .locals 0

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private getDualDisplayPackages()[Ljava/lang/String;
    .locals 0

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    return-object p0
.end method

.method private setDualDisplayCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->getDualDisplayPackages()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isDefaultInstance(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->getBaseNumber(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "isDefaultInstance() allowedNumber:"

    const-string v1, ", ret:"

    const-string v2, "PluginLockInstancePolicy"

    invoke-static {p0, p1, v1, v0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return v0
.end method

.method public isDualDisplayInstance(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->getBaseNumber(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x2

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "isDualDisplayInstance() allowedNumber:"

    const-string v3, ", ret:"

    const-string v4, "PluginLockInstancePolicy"

    invoke-static {v2, p1, v3, p0, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public isEnable(I)Z
    .locals 3

    if-ltz p1, :cond_0

    rem-int/lit8 p0, p1, 0xa

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isEnable() value:"

    const-string v1, ", ret:"

    const-string v2, "PluginLockInstancePolicy"

    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return p0
.end method

.method public isSameInstance(II)Z
    .locals 3

    div-int/lit8 p0, p1, 0xa

    div-int/lit8 v0, p2, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isSameInstance() submitNum:"

    const-string v1, ", matchedNum:"

    const-string v2, ", ret:"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "PluginLockInstancePolicy"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return p0
.end method

.method public setCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setDefaultCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setDualDisplayCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public setDefaultCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
