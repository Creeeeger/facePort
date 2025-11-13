.class public final Landroidx/picker/model/AppData$CategoryAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "androidx/picker/model/AppData$CategoryAppDataBuilder",
        "",
        "Landroidx/picker/model/appdata/CategoryAppData;",
        "",
        "key",
        "<init>",
        "(Ljava/lang/String;)V",
        "appData",
        "(Landroidx/picker/model/appdata/CategoryAppData;)V",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public appInfoDataList:Ljava/util/List;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/picker/model/appdata/CategoryAppData;)V
    .locals 1

    iget-object v0, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v0, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$CategoryAppDataBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->label:Ljava/lang/String;

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->key:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    return-void
.end method
