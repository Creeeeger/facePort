.class public final Landroid/app/contextualsearch/ContextualSearchState;
.super Ljava/lang/Object;
.source "ContextualSearchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContent:Landroid/app/assist/AssistContent;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/contextualsearch/ContextualSearchState$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/ContextualSearchState$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    iput-object p2, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    iput-object p3, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    iput-object v1, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/ContextualSearchState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/ContextualSearchState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContent()Landroid/app/assist/AssistContent;
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStructure()Landroid/app/assist/AssistStructure;
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
