.class public Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final defaultItem:Z

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/CharSequence;

.field public final listener:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->label:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->listener:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;

    iput-boolean p5, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->defaultItem:Z

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->label:Ljava/lang/CharSequence;

    return-object p0
.end method
