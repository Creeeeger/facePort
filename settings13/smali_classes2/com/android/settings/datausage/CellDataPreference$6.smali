.class Lcom/android/settings/datausage/CellDataPreference$6;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const-string v0, "CellDataPreference"

    const-string/jumbo v1, "onSubscriptionsChanged"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference$6;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {p0}, Lcom/android/settings/datausage/CellDataPreference;->-$$Nest$mupdateEnabled(Lcom/android/settings/datausage/CellDataPreference;)V

    return-void
.end method
