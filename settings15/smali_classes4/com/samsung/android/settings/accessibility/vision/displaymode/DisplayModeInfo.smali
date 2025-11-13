.class public final Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;
.super Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final checkItemDefaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;->checkItemDefaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    return-void
.end method


# virtual methods
.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;->checkItemDefaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    invoke-interface {v0}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;->context:Landroid/content/Context;

    const v1, 0x7f0802ba

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
