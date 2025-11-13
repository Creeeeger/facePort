.class public final synthetic Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda4;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference$$ExternalSyntheticLambda4;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    sget p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;->$r8$clinit:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    const/4 p0, 0x0

    throw p0
.end method
