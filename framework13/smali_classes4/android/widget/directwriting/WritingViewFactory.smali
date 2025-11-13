.class public final Landroid/widget/directwriting/WritingViewFactory;
.super Ljava/lang/Object;
.source "WritingViewFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createWritingView(Landroid/view/View;)Landroid/widget/directwriting/WritingView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 12
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Landroid/widget/directwriting/EditTextWritingViewAdapter;

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/directwriting/EditTextWritingViewAdapter;-><init>(Landroid/widget/EditText;)V

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Landroid/widget/directwriting/CommonWritingViewAdapter;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/CommonWritingViewAdapter;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static blacklist createWritingView(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)Landroid/widget/directwriting/WritingView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 20
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroid/widget/directwriting/EditTextWritingViewAdapter;

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {v0, v1, p1}, Landroid/widget/directwriting/EditTextWritingViewAdapter;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Landroid/widget/directwriting/CommonWritingViewAdapter;

    invoke-direct {v0, p0, p1}, Landroid/widget/directwriting/CommonWritingViewAdapter;-><init>(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)V

    return-object v0
.end method
