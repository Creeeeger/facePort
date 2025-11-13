.class public final synthetic Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;ZLcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;

    iput-boolean p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->listener:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;->onItemSelected(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
