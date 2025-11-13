.class public final Lcom/android/systemui/edgelighting/utils/Utils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "purple"

    goto :goto_0

    :pswitch_1
    const-string p0, "indie pink"

    goto :goto_0

    :pswitch_2
    const-string p0, "deep blue"

    goto :goto_0

    :pswitch_3
    const-string/jumbo p0, "skyblue"

    goto :goto_0

    :pswitch_4
    const-string/jumbo p0, "turquoise"

    goto :goto_0

    :pswitch_5
    const-string p0, "green"

    goto :goto_0

    :pswitch_6
    const-string p0, "light green"

    goto :goto_0

    :pswitch_7
    const-string p0, "orange"

    goto :goto_0

    :pswitch_8
    const-string p0, "red"

    goto :goto_0

    :pswitch_9
    const-string p0, "pink"

    goto :goto_0

    :pswitch_a
    const-string p0, "blue"

    goto :goto_0

    :cond_0
    const-string p0, "custom"

    goto :goto_0

    :cond_1
    const-string p0, "app color"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "preload/echo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "preload/heart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "preload/basic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "preload/reflection"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "preload/eclipse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "preload/noframe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "preload/fireworks"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "preload/spotlight"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, ""

    goto :goto_1

    :pswitch_0
    const-string p0, "echo"

    goto :goto_1

    :pswitch_1
    const-string p0, "heart"

    goto :goto_1

    :pswitch_2
    const-string p0, "basic"

    goto :goto_1

    :pswitch_3
    const-string p0, "glitter"

    goto :goto_1

    :pswitch_4
    const-string p0, "elicpse"

    goto :goto_1

    :pswitch_5
    const-string p0, "none"

    goto :goto_1

    :pswitch_6
    const-string p0, "fireworks"

    goto :goto_1

    :pswitch_7
    const-string/jumbo p0, "spotlight"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x647c7732 -> :sswitch_7
        -0x3d666d7a -> :sswitch_6
        -0x286061ba -> :sswitch_5
        -0x18a1efbf -> :sswitch_4
        0x27565ff1 -> :sswitch_3
        0x39589ca8 -> :sswitch_2
        0x39aeb8c0 -> :sswitch_1
        0x5cb1aa6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .locals 2

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static isLargeCoverFlipFolded()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "LARGESCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public static setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->mIsTalkbackMode:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
