.class public final Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mKey:Ljava/lang/String;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mSummary:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method
