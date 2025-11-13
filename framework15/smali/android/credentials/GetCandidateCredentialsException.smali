.class public Landroid/credentials/GetCandidateCredentialsException;
.super Ljava/lang/Exception;
.source "GetCandidateCredentialsException.java"


# static fields
.field public static final blacklist TYPE_INTERRUPTED:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

.field public static final blacklist TYPE_NO_CREDENTIAL:Ljava/lang/String; = "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

.field public static final blacklist TYPE_UNKNOWN:Ljava/lang/String; = "android.credentials.GetCandidateCredentialsException.TYPE_UNKNOWN"

.field public static final blacklist TYPE_USER_CANCELED:Ljava/lang/String; = "android.credentials.GetCredentialException.TYPE_USER_CANCELED"


# instance fields
.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsException;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/credentials/GetCandidateCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsException;->mType:Ljava/lang/String;

    return-object v0
.end method
