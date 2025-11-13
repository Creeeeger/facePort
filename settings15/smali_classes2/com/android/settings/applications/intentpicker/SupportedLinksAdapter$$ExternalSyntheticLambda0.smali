.class public final synthetic Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;

.field public final synthetic f$1:Landroid/widget/CheckedTextView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;Landroid/widget/CheckedTextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckedTextView;

    iput p3, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckedTextView;

    iget p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object p1, p1, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsChecked:Z

    return-void
.end method
