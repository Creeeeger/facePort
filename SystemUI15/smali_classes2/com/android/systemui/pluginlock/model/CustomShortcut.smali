.class public Lcom/android/systemui/pluginlock/model/CustomShortcut;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mDirection:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direction"
    .end annotation
.end field

.field private mIconSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_size"
    .end annotation
.end field

.field private mPaddingBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field

.field private mPaddingBottomLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom_land"
    .end annotation
.end field

.field private mPaddingSide:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side"
    .end annotation
.end field

.field private mPaddingSideLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_side_land"
    .end annotation
.end field

.field private mPosition:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mShortCutInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mDirection:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIconSize()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mIconSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPaddingBottomLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPaddingSide()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPaddingSideLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getShortCutInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mShortCutInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mDirection:Ljava/lang/Integer;

    return-void
.end method

.method public setIconSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mIconSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottomLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingBottomLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSide(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSide:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingSideLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPaddingSideLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setShortCutInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/CustomShortcut;->mShortCutInfo:Ljava/lang/String;

    return-void
.end method
