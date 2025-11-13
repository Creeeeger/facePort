.class public final Lcom/android/systemui/qs/bar/MicMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;


# instance fields
.field public final detailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public micModeButton:Landroid/view/View;

.field public micModeContainer:Landroid/widget/LinearLayout;

.field public final micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

.field public micModeEffect:Landroid/widget/TextView;

.field public micModeEnable:Z

.field public micModeText:Landroid/widget/TextView;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final settingsValueList:[Landroid/net/Uri;

.field public final updateBarContentsRunnable:Ljava/lang/Runnable;

.field public final updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/MicMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/MicMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/MicMode;->updateBarContentsRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/MicMode;->detailController:Lcom/android/systemui/qs/SecQSDetailController;

    new-instance p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/net/Uri;

    const-string p2, "mic_mode_enable"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "mic_mode_effect"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsValueList:[Landroid/net/Uri;

    new-instance p1, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/MicMode$settingsListener$1;-><init>(Lcom/android/systemui/qs/bar/MicMode;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/qs/bar/MicMode;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method


# virtual methods
.method public final fini()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final getButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    return-object p0
.end method

.method public final inflate(Landroid/view/View;)V
    .locals 3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    const v2, 0x7f0d0391

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a070d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeText:Landroid/widget/TextView;

    const v0, 0x7f0a0708

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    const v0, 0x7f0a0707

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    return-void
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsValueList:[Landroid/net/Uri;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getMicModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    return p0
.end method

.method public final setClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/MicMode$setClickListener$1;-><init>(Lcom/android/systemui/qs/bar/MicMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final updateContents()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getMicModeEffect()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeDetailAdapter:Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;->create(ILandroid/content/Context;)Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getText()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateContents "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicMode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final updateFontScale()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0710f7

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    const v0, 0x7f0710f6

    invoke-static {p0, v0, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MicMode;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_1

    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    goto :goto_1

    :cond_1
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    :goto_1
    const/4 v3, 0x0

    iget v4, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->betweenMargin:I

    iget v5, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    iget-boolean v6, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->videoCallEnabled:Z

    iget-boolean p2, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->voIpTranslatorEnabled:Z

    if-eqz p1, :cond_3

    if-nez v6, :cond_5

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    if-nez v6, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :cond_5
    :goto_2
    if-eqz p1, :cond_7

    if-nez v6, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, p1, p2, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    iget v3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    invoke-virtual {p1, v2, p2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEffect:Landroid/widget/TextView;

    if-eqz p0, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget p3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->startPadding:I

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_a
    return-void
.end method

.method public final updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeButton:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MicMode;->micModeEnable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
