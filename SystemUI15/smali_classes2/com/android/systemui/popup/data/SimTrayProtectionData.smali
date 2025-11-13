.class public Lcom/android/systemui/popup/data/SimTrayProtectionData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/data/SimTrayProtectionData;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isB6CommonModel()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_TYPE:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBodyImage()I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->isB6CommonModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08125d

    return p0

    :cond_0
    const p0, 0x7f08125c

    return p0
.end method

.method public getBodyImageHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/popup/data/SimTrayProtectionData;->isB6CommonModel()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p0, :cond_0

    const p0, 0x7f0713d8

    return p0

    :cond_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0713d9

    return p0

    :cond_1
    const p0, 0x7f0713d7

    return p0
.end method

.method public getBodyMessageInsertingSimCard()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/data/SimTrayProtectionData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f131258

    return p0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->POPUPUI_MODEL_TYPE_WINNER:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_CHC_MODEL:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FOLD_TYPE:Z

    if-eqz v0, :cond_2

    const p0, 0x7f13125a

    return p0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/popup/util/PopupUIUtil;->SIM_CARD_TRAY_STYLE_FLIP_TYPE:Z

    const v1, 0x7f13125b

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/popup/data/SimTrayProtectionData;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_4

    const p0, 0x7f131256

    goto :goto_0

    :cond_4
    const p0, 0x7f131257

    :goto_0
    return p0

    :cond_5
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const v1, 0x7f13125c

    :goto_1
    return v1

    :cond_7
    :goto_2
    const p0, 0x7f131259

    return p0
.end method

.method public getBodyMessageNoSimCard()I
    .locals 0

    const p0, 0x7f13125d

    return p0
.end method

.method public getBodyMessageWaterProofSimCard()I
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    const p0, 0x7f13125f

    goto :goto_0

    :cond_0
    const p0, 0x7f13125e

    :goto_0
    return p0
.end method

.method public getTitleMessage()I
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    const p0, 0x7f131261

    goto :goto_0

    :cond_0
    const p0, 0x7f131260

    :goto_0
    return p0
.end method
