.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field private static final blacklist KEY_STORE:Landroid/security/KeyStore;

.field public static final greylist-max-r NO_ERROR:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyStore"

.field public static final greylist-max-o UID_SELF:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/security/KeyStore;

    invoke-direct {v0}, Landroid/security/KeyStore;-><init>()V

    sput-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getInstance()Landroid/security/KeyStore;
    .locals 1

    .line 52
    sget-object v0, Landroid/security/KeyStore;->KEY_STORE:Landroid/security/KeyStore;

    return-object v0
.end method

.method public static greylist-max-r getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 3
    .param p0, "errorCode"    # I

    .line 145
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x2710

    const-string v2, "Should not be called."

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addAuthToken([B)I
    .locals 1
    .param p1, "authToken"    # [B

    .line 129
    invoke-static {p1}, Landroid/security/Authorization;->addAuthToken([B)I

    move-result v0

    return v0
.end method

.method public greylist-max-r delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-p isEmpty()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-r listUidsOfAuthBoundKeys()[I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onDeviceOffBody()V
    .locals 0

    .line 136
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->onDeviceOffBody()V

    .line 137
    return-void
.end method

.method public greylist state()Landroid/security/KeyStore$State;
    .locals 1

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r state(I)Landroid/security/KeyStore$State;
    .locals 2
    .param p1, "userId"    # I

    .line 58
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->getState(I)I

    move-result v0

    .line 59
    .local v0, "userState":I
    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 65
    :pswitch_0
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 63
    :pswitch_1
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    .line 61
    :pswitch_2
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-r unlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    return v0
.end method
