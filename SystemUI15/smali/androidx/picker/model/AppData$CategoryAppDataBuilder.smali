.class public final Landroidx/picker/model/AppData$CategoryAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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

    iput-object v0, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->label:Ljava/lang/String;

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->key:Ljava/lang/String;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    return-void
.end method
