.class public final Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
.super Ljava/lang/Object;
.source "InputConnectionCommandHeader.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputConnectionCommandHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
