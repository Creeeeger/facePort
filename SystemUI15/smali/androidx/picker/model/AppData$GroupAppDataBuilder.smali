.class public final Landroidx/picker/model/AppData$GroupAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->key:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/picker/model/appdata/GroupAppData;
    .locals 5

    new-instance v0, Landroidx/picker/model/appdata/GroupAppData;

    sget-object v1, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/picker/model/AppInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->key:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v1, v3, v4, v2}, Landroidx/picker/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v2, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->subLabel:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object p0, p0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-direct {v0, v1, v3, v4, p0}, Landroidx/picker/model/appdata/GroupAppData;-><init>(Landroidx/picker/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
