.class public final Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;-><init>()V

    return-void
.end method

.method public static getIconInfoFromPackageName(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/media/taptotransfer/common/IconInfo;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f130bff

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-direct {v2, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, p1, v0}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    new-instance p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const p2, 0x7f130bfe

    invoke-direct {p1, p2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    const p2, 0x7f130bce

    invoke-direct {p1, p2}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    :goto_1
    new-instance p2, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;

    const p3, 0x7f080856

    invoke-direct {p2, p3}, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;-><init>(I)V

    sget-object p3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->Companion:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->DEFAULT_ICON_TINT:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V

    return-object p0
.end method
