.class public final Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public divider:Landroid/view/View;

.field public extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public extraBrightnessSummary:Landroid/widget/TextView;

.field public extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->context:Landroid/content/Context;

    return-void
.end method

.method public static final access$putExtraBrightness(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "putExtraBrightness : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickBarBrightnessExtraBrightness"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_extra_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public final setExtraBrightnessLayoutClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$1;-><init>(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$2;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$2;-><init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method public final setExtraBrightnessLayoutVisibilityLogic(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0a0d34

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->setExtraBrightnessLayoutClickListener()V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const/4 v2, 0x0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessContainer:Lcom/android/systemui/qs/SecQSSwitchPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_7
    :goto_2
    return-void
.end method
