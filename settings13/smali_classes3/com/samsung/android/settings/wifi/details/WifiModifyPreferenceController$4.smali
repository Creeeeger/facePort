.class Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;
.super Ljava/lang/Object;
.source "WifiModifyPreferenceController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    .line 1707
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1716
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1709
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$4;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$mpasswordCheck(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Ljava/lang/String;)V

    return-void
.end method
