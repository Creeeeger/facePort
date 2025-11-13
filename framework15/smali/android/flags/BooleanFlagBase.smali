.class abstract Landroid/flags/BooleanFlagBase;
.super Ljava/lang/Object;
.source "BooleanFlagBase.java"

# interfaces
.implements Landroid/flags/Flag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/flags/Flag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCategoryName:Ljava/lang/String;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/flags/BooleanFlagBase;->mNamespace:Ljava/lang/String;

    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;
    .locals 0

    iput-object p1, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Landroid/flags/BooleanFlagBase;->mCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/Flag;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract blacklist getDefault()Ljava/lang/Boolean;
.end method

.method public bridge synthetic blacklist getDefault()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
