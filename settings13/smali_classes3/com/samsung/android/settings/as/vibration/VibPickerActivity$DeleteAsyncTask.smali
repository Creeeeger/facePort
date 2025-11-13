.class Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;
.super Landroid/os/AsyncTask;
.source "VibPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 579
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->deleteCustomPattern(I)V

    .line 580
    aget-object p0, p1, v0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 572
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 572
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
