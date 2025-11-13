.class public final Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field public final mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public final mLayout:Ljava/lang/String;

.field public final mSubtypeLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mSubtypeLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mLayout:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p4, p0, Lcom/android/settings/inputmethod/NewKeyboardSettingsUtils$KeyboardInfo;->mInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method
