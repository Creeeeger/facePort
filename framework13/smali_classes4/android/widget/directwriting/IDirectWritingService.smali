.class public interface abstract Landroid/widget/directwriting/IDirectWritingService;
.super Ljava/lang/Object;
.source "IDirectWritingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/directwriting/IDirectWritingService$Stub;,
        Landroid/widget/directwriting/IDirectWritingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.widget.directwriting.IDirectWritingService"

.field public static final blacklist KEY_BUNDLE_CHECK_CAN_BIND:Ljava/lang/String; = "onlyCheckCanBind"

.field public static final blacklist KEY_BUNDLE_CONFIG_FORCE_SHOW_SIP_APP_PRIVATE_COMMAND_LIST:Ljava/lang/String; = "forceShowSipAppPrivateCommandList"

.field public static final blacklist KEY_BUNDLE_CONFIG_HIDE_DELAY:Ljava/lang/String; = "hideDelay"

.field public static final blacklist KEY_BUNDLE_CONFIG_KEEP_WRITING_DELAY:Ljava/lang/String; = "keepWritingDelay"

.field public static final blacklist KEY_BUNDLE_CONFIG_MAX_DISTANCE:Ljava/lang/String; = "maxDistance"

.field public static final blacklist KEY_BUNDLE_CONFIG_TRANSIENT_BAR_REJECT_DISTANCE:Ljava/lang/String; = "transientBarRejectDistance"

.field public static final blacklist KEY_BUNDLE_CONFIG_TRIGGER_HORIZONTAL_SPACE_DEFAULT:Ljava/lang/String; = "triggerHorizontalSpace"

.field public static final blacklist KEY_BUNDLE_CONFIG_TRIGGER_VERTICAL_SPACE:Ljava/lang/String; = "triggerVerticalSpace"

.field public static final blacklist KEY_BUNDLE_EDIT_RECT:Ljava/lang/String; = "editRect"

.field public static final blacklist KEY_BUNDLE_EDIT_RECT_RELOCATED:Ljava/lang/String; = "onlyRectChanged"

.field public static final blacklist KEY_BUNDLE_EVENT:Ljava/lang/String; = "event"

.field public static final blacklist KEY_BUNDLE_ROOT_VIEW_RECT:Ljava/lang/String; = "rootViewRect"

.field public static final blacklist KEY_BUNDLE_SERVICE_HOST_SOURCE:Ljava/lang/String; = "hostSource"

.field public static final blacklist VALUE_BUNDLE_SERVICE_HOST_SOURCE_SAMSUNG_INTERNET:Ljava/lang/String; = "samsunginternet"

.field public static final blacklist VALUE_BUNDLE_SERVICE_HOST_SOURCE_VIEWROOT:Ljava/lang/String; = "viewroot"

.field public static final blacklist VALUE_SERVICE_HOST_SOURCE_INTERNET:Ljava/lang/String; = "|samsunginternet"

.field public static final blacklist VERSION:I = 0x1


# virtual methods
.method public abstract blacklist getConfiguration(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBoundedEditTextChanged(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDispatchEvent(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEditTextActionModeStarted(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStartRecognition(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStopRecognition(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTextViewExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUpdateImeOptions(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWindowFocusLost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterCallback(Landroid/widget/directwriting/IDirectWritingServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
