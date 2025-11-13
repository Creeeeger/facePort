.class Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$1;
.super Ljava/lang/Object;
.source "WifiApConditionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
