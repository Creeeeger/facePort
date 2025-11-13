.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerInjection.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onClientAttached:I = 0x4

.field static final blacklist TRANSACTION_onClientDetached:I = 0x5

.field static final blacklist TRANSACTION_onFrameworkDetached:I = 0x3

.field static final blacklist TRANSACTION_onParamSet:I = 0x7

.field static final blacklist TRANSACTION_onPreempted:I = 0xb

.field static final blacklist TRANSACTION_onRecognitionStarted:I = 0x8

.field static final blacklist TRANSACTION_onRecognitionStopped:I = 0x9

.field static final blacklist TRANSACTION_onRestarted:I = 0x2

.field static final blacklist TRANSACTION_onSoundModelLoaded:I = 0x6

.field static final blacklist TRANSACTION_onSoundModelUnloaded:I = 0xa

.field static final blacklist TRANSACTION_registerGlobalEventInjection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerInjection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onPreempted()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V

    goto :goto_0

    :pswitch_5
    sget-object v2, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/SoundModel;

    sget-object v3, Landroid/media/soundtrigger/Phrase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/soundtrigger/Phrase;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectModelEvent;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientDetached(Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;->registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
