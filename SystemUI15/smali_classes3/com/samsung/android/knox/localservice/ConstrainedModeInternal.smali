.class public abstract Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkConstrainedState()Z
.end method

.method public abstract cleanUpConstrainedState(I)V
.end method

.method public abstract disableConstrainedState(I)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract getConstrainedState()I
.end method

.method public abstract isRestrictedByConstrainedState(I)Z
.end method
