.class public final Landroidx/picker/model/AppData$ListAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final appInfo:Landroidx/picker/model/AppInfo;

.field private extraLabel:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isValueInSubLabel:Z

.field private label:Ljava/lang/String;

.field private subIcon:Landroid/graphics/drawable/Drawable;

.field private subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfoData;)V
    .locals 2

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->isValueInSubLabel()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getExtraLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setExtraLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    return-void
.end method

.method public static synthetic setSubLabel$default(Landroidx/picker/model/AppData$ListAppDataBuilder;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/picker/model/AppData;
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/model/AppData$ListAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p0

    return-object p0
.end method

.method public build()Landroidx/picker/model/AppInfoData;
    .locals 15

    new-instance v14, Landroidx/picker/model/AppInfoDataImpl;

    iget-object v1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v3, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->label:Ljava/lang/String;

    iget-object v6, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subLabel:Ljava/lang/String;

    iget-object v7, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->extraLabel:Ljava/lang/String;

    iget-boolean v11, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->isValueInSubLabel:Z

    const/16 v12, 0x380

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    return-object p0
.end method

.method public final setExtraLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->extraLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setSubLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/picker/model/AppData$ListAppDataBuilder;->setSubLabel$default(Landroidx/picker/model/AppData$ListAppDataBuilder;Ljava/lang/String;ZILjava/lang/Object;)Landroidx/picker/model/AppData$ListAppDataBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setSubLabel(Ljava/lang/String;Z)Landroidx/picker/model/AppData$ListAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->subLabel:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/picker/model/AppData$ListAppDataBuilder;->isValueInSubLabel:Z

    return-object p0
.end method
