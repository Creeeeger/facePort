.class public Landroid/credentials/CreateCredentialException;
.super Ljava/lang/Exception;
.source "CreateCredentialException.java"


# static fields
.field public static final whitelist TYPE_INTERRUPTED:Ljava/lang/String; = "android.credentials.CreateCredentialException.TYPE_INTERRUPTED"

.field public static final whitelist TYPE_NO_CREATE_OPTIONS:Ljava/lang/String; = "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

.field public static final whitelist TYPE_UNKNOWN:Ljava/lang/String; = "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

.field public static final whitelist TYPE_USER_CANCELED:Ljava/lang/String; = "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"


# instance fields
.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CreateCredentialException;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialException;->mType:Ljava/lang/String;

    return-object v0
.end method
