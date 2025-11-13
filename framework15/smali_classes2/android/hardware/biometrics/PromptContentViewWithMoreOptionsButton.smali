.class public final Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;
.super Ljava/lang/Object;
.source "PromptContentViewWithMoreOptionsButton.java"

# interfaces
.implements Landroid/hardware/biometrics/PromptContentViewParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_DESCRIPTION_CHARACTER_NUMBER:I = 0xe1


# instance fields
.field private blacklist mButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mDescription:Ljava/lang/String;

.field private blacklist mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist getButtonInfo()Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMoreOptionsButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
