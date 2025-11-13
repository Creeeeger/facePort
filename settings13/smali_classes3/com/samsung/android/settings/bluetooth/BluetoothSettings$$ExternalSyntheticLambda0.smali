.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$1:Z

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->$r8$lambda$66UGiJT8ILjaOwbVPXNYk70PK5E(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V

    return-void
.end method
