.class public final Landroidx/picker/model/AppData$GroupAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0012\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "androidx/picker/model/AppData$GroupAppDataBuilder",
        "",
        "Landroidx/picker/model/appdata/GroupAppData;",
        "",
        "key",
        "<init>",
        "(Ljava/lang/String;)V",
        "appData",
        "(Landroidx/picker/model/appdata/GroupAppData;)V",
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
.field public final key:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public mAppInfoDataList:Ljava/util/List;

.field public subLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/picker/model/appdata/GroupAppData;)V
    .locals 1

    iget-object v0, p1, Landroidx/picker/model/appdata/GroupAppData;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v0, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/picker/model/appdata/GroupAppData;->group:Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    iget-object p1, p1, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    const-string v0, "datas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->key:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/picker/model/appdata/GroupAppData;
    .locals 4

    new-instance v0, Landroidx/picker/model/appdata/GroupAppData;

    sget-object v1, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->key:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v3, v2, v1}, Landroidx/picker/model/AppInfo$Companion;->obtain$default(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v1

    iget-object v3, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v3, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->subLabel:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-object p0, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/picker/model/appdata/GroupAppData;-><init>(Landroidx/picker/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
