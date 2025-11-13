.class public final Landroid/app/Person;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Person$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIsBot:Z

.field private greylist-max-o mIsImportant:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private greylist-max-o mName:Ljava/lang/CharSequence;

.field private greylist-max-o mUri:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/app/Person;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBot(Landroid/app/Person;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Person;->mIsBot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImportant(Landroid/app/Person;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/Person;->mIsImportant:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/app/Person;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/app/Person;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/Person$1;

    invoke-direct {v0}, Landroid/app/Person$1;-><init>()V

    sput-object v0, Landroid/app/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/Person$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmName(Landroid/app/Person$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIcon(Landroid/app/Person$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmUri(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmKey(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIsBot(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIsImportant(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Person$Builder;Landroid/app/Person-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/app/Person$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Person-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/Person;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Person;

    iget-object v2, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/app/Person;->mIsBot:Z

    iget-boolean v3, v0, Landroid/app/Person;->mIsBot:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/Person;->mIsImportant:Z

    iget-boolean v3, v0, Landroid/app/Person;->mIsImportant:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    return v1

    :cond_2
    return v1
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getIconUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/Person;->mIsBot:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBot()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    return v0
.end method

.method public whitelist isImportant()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    return v0
.end method

.method public greylist-max-o resolveToLegacyUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public whitelist toBuilder()Landroid/app/Person$Builder;
    .locals 2

    new-instance v0, Landroid/app/Person$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Person$Builder;-><init>(Landroid/app/Person;Landroid/app/Person$Builder-IA;)V

    return-object v0
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/Flags;->visitPersonUri()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
