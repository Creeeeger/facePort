.class public final Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final appInfo:Landroidx/picker/model/AppInfo;

.field private dimmed:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field private selected:Z

.field private subIcon:Landroid/graphics/drawable/Drawable;

.field private subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/model/AppInfoData;)V
    .locals 1

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setSubLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->setDimmed(Z)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/picker/model/AppData;
    .locals 0

    invoke-virtual {p0}, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object p0

    return-object p0
.end method

.method public build()Landroidx/picker/model/AppInfoData;
    .locals 15

    new-instance v14, Landroidx/picker/model/AppInfoDataImpl;

    iget-object v1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    iget-object v3, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->label:Ljava/lang/String;

    iget-object v6, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->subLabel:Ljava/lang/String;

    iget-boolean v9, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->selected:Z

    iget-boolean v10, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->dimmed:Z

    const/16 v12, 0x4c0

    const/4 v13, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->appInfo:Landroidx/picker/model/AppInfo;

    return-object p0
.end method

.method public final setDimmed(Z)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-boolean p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->dimmed:Z

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final setSelected(Z)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-boolean p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->selected:Z

    return-object p0
.end method

.method public final setSubIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->subIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setSubLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/picker/model/AppData$GridCheckBoxAppDataBuilder;->subLabel:Ljava/lang/String;

    return-object p0
.end method
