.class public final Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
