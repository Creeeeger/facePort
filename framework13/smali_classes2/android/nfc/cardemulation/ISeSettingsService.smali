.class public interface abstract Landroid/nfc/cardemulation/ISeSettingsService;
.super Ljava/lang/Object;
.source "ISeSettingsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ISeSettingsService$Stub;,
        Landroid/nfc/cardemulation/ISeSettingsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nfc.cardemulation.ISeSettingsService"


# virtual methods
.method public abstract blacklist setSeacActive(Landroid/content/ComponentName;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
