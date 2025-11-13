.class Lcom/android/settings/location/LocationSwitchBarController$1;
.super Ljava/lang/Object;
.source "LocationSwitchBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSwitchBarController;->onLocationOptionChange(Ljava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSwitchBarController;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->this$0:Lcom/android/settings/location/LocationSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/settings/location/LocationSwitchBarController$1;->this$0:Lcom/android/settings/location/LocationSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/location/LocationSwitchBarController;->-$$Nest$fgetmLocationEnabler(Lcom/android/settings/location/LocationSwitchBarController;)Lcom/android/settings/location/LocationEnabler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/location/LocationEnabler;->setLocationEnabled(Z)V

    .line 173
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
