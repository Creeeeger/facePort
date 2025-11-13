.class public final Lcom/android/systemui/qs/bar/VoIPTranslator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public isPrerequisiteMet:Z

.field public isVoIPEnabled:Z

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final settingsValueList:[Landroid/net/Uri;

.field public final updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

.field public final util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

.field public voIPTranslatorButton:Landroid/view/View;

.field public voIPTranslatorContainer:Landroid/widget/LinearLayout;

.field public voIpTranslatorText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/VoIPTranslator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/VoIPTranslator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->updateBarVisibilitiesRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo p2, "voip_translator_enable"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsValueList:[Landroid/net/Uri;

    new-instance p1, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VoIPTranslator$settingsListener$1;-><init>(Lcom/android/systemui/qs/bar/VoIPTranslator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/qs/bar/VoIPTranslator;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static updatePrerequisite()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "isPrerequisiteMet: disable native ai: "

    const-string v2, "VoIPTranslator"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final fini()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final getButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    return-object p0
.end method

.method public final inflate(Landroid/view/View;)V
    .locals 3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    const v2, 0x7f0d03ca

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0e32

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0e36

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIpTranslatorText:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    return-void
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->settingsValueList:[Landroid/net/Uri;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getVoIPTranslatorEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Lcom/android/systemui/qs/bar/VoIPTranslator;->updatePrerequisite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    return p0
.end method

.method public final setClickListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/qs/bar/VoIPTranslator$setClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/VoIPTranslator$setClickListener$1;-><init>(Lcom/android/systemui/qs/bar/VoIPTranslator;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final updateContents()V
    .locals 0

    return-void
.end method

.method public final updateFontScale()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIpTranslatorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x3f4ccccd    # 0.8f

    const v1, 0x3fa66666    # 1.3f

    const v2, 0x7f0710f7

    invoke-static {v0, v2, p0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateHeightMargins(ZLcom/android/systemui/qs/bar/VideoCallMicModeStates;Lcom/android/systemui/qs/bar/VideoCallMicModeResources;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->util:Lcom/android/systemui/qs/bar/VideoCallMicModeUtil;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1

    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultStartPadding:I

    goto :goto_1

    :cond_1
    iget v2, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->iconPadding:I

    :goto_1
    const/4 v3, 0x0

    iget v4, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->defaultMargin:I

    iget-boolean p2, p2, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->micModeEnabled:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, p1, p2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget v0, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingStart:I

    iget p3, p3, Lcom/android/systemui/qs/bar/VideoCallMicModeResources;->textContainerPaddingEnd:I

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_7
    return-void
.end method

.method public final updateVisibilities(Lcom/android/systemui/qs/bar/VideoCallMicModeStates;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->voIPTranslatorButton:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isPrerequisiteMet:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/VoIPTranslator;->isVoIPEnabled:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/qs/bar/VideoCallMicModeStates;->videoCallEnabled:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
