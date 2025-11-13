.class public final synthetic Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->$r8$lambda$WG7vC49EqV8IxNmkCwyziRSfJvU(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
