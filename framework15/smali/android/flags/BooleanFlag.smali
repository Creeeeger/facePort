.class public Landroid/flags/BooleanFlag;
.super Landroid/flags/BooleanFlagBase;
.source "BooleanFlag.java"


# instance fields
.field private final blacklist mDefault:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/flags/BooleanFlagBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Landroid/flags/BooleanFlag;->mDefault:Z

    return-void
.end method


# virtual methods
.method public blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    return-object p0
.end method

.method public bridge synthetic blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;
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

    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCategoryName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Landroid/flags/BooleanFlag;->mDefault:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDefault()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDescription()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getLabel()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getNamespace()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
