.class Lcom/android/settings/accounts/AccountPreferenceController$3;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$3;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$mupdateUi(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method
