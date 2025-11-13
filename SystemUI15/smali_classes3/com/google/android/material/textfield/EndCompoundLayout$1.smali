.class public final Lcom/google/android/material/textfield/EndCompoundLayout$1;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->afterEditTextChanged()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$1;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->beforeEditTextChanged()V

    return-void
.end method
