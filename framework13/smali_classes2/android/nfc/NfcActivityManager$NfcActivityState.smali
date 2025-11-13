.class Landroid/nfc/NfcActivityManager$NfcActivityState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcActivityState"
.end annotation


# instance fields
.field greylist-max-o activity:Landroid/app/Activity;

.field greylist-max-o flags:I

.field blacklist listenTech:I

.field greylist-max-o ndefMessage:Landroid/nfc/NdefMessage;

.field greylist-max-o ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field greylist-max-o onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

.field blacklist pollTech:I

.field blacklist proto:Ljava/lang/String;

.field greylist-max-o readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

.field greylist-max-o readerModeExtras:Landroid/os/Bundle;

.field greylist-max-o readerModeFlags:I

.field greylist-max-o resumed:Z

.field blacklist services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field blacklist tech:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/nfc/NfcActivityManager;

.field greylist-max-o token:Landroid/os/Binder;

.field greylist-max-o uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field greylist-max-o uris:[Landroid/net/Uri;

.field blacklist userId:I


# direct methods
.method public constructor blacklist <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V
    .locals 2
    .param p1, "this$0"    # Landroid/nfc/NfcActivityManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 137
    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 119
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 120
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 121
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 122
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 123
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 124
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 125
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 126
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 130
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 131
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    .line 133
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 134
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 138
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required."

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 151
    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 152
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 153
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/nfc/NfcActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 154
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 159
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 160
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 161
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 162
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 163
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 164
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 165
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 168
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 169
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 171
    iput v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 173
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 180
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 181
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v5    # "uri":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
