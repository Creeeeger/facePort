.class public Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
.super Ljava/lang/Object;
.source "ParsedAttributionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedAttribution;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_NUM_ATTRIBUTIONS:I = 0x190


# instance fields
.field private blacklist inheritFrom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist label:I

.field private blacklist tag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    const-class v3, Landroid/annotation/StringRes;

    iget v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    const-class v0, Landroid/annotation/StringRes;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInheritFrom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLabel()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setInheritFrom(Ljava/util/List;)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setLabel(I)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .locals 3

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    const-class v0, Landroid/annotation/StringRes;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public blacklist setTag(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .locals 3

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
