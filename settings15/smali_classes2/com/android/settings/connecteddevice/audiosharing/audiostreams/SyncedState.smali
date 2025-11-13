.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamStateHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;


# virtual methods
.method public final getOnClickListener(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;)V

    return-object v0
.end method

.method public getStateEnum()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;->SYNCED:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$AudioStreamState;

    return-object p0
.end method
