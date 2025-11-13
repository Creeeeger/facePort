.class public Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedInstrumentationImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist functionalTest:Z

.field private blacklist handleProfiling:Z

.field private blacklist targetPackage:Ljava/lang/String;

.field private blacklist targetProcesses:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    iput-boolean p4, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

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

.method public blacklist getTargetPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetProcesses()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFunctionalTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return v0
.end method

.method public blacklist isHandleProfiling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    return v0
.end method

.method public blacklist setFunctionalTest(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return-object p0
.end method

.method public blacklist setHandleProfiling(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    return-object p0
.end method

.method public blacklist setTargetPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTargetProcesses(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
