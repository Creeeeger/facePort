.class public abstract Landroid/content/integrity/IntegrityFormula;
.super Ljava/lang/Object;
.source "IntegrityFormula.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/IntegrityFormula$Tag;,
        Landroid/content/integrity/IntegrityFormula$SourceStamp;,
        Landroid/content/integrity/IntegrityFormula$Installer;,
        Landroid/content/integrity/IntegrityFormula$Application;
    }
.end annotation


# static fields
.field public static final blacklist BOOLEAN_ATOMIC_FORMULA_TAG:I = 0x3

.field public static final blacklist COMPOUND_FORMULA_TAG:I = 0x0

.field public static final blacklist INSTALLER_ALLOWED_BY_MANIFEST_FORMULA_TAG:I = 0x4

.field public static final blacklist LONG_ATOMIC_FORMULA_TAG:I = 0x2

.field public static final blacklist STRING_ATOMIC_FORMULA_TAG:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist all([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .locals 3

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs whitelist any([Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .locals 3

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static whitelist not(Landroid/content/integrity/IntegrityFormula;)Landroid/content/integrity/IntegrityFormula;
    .locals 3

    new-instance v0, Landroid/content/integrity/CompoundFormula;

    filled-new-array {p0}, [Landroid/content/integrity/IntegrityFormula;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown formula tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/content/integrity/InstallerAllowedByManifestFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :pswitch_1
    sget-object v1, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :pswitch_2
    sget-object v1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :pswitch_3
    sget-object v1, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    :pswitch_4
    sget-object v1, Landroid/content/integrity/CompoundFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/integrity/IntegrityFormula;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public abstract blacklist getTag()I
.end method

.method public abstract blacklist isAppCertificateFormula()Z
.end method

.method public abstract blacklist isAppCertificateLineageFormula()Z
.end method

.method public abstract blacklist isInstallerFormula()Z
.end method

.method public abstract blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
.end method
