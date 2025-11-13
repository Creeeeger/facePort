.class public Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;
.super Landroidx/preference/SecSwitchPreference;
.source "AutoSwitchPreference.java"


# instance fields
.field private mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public getCachedBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method
