.class public Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.super Lcom/samsung/android/sume/core/types/OptionBase;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter$Option;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>(Landroid/os/Parcel;)V

    .line 87
    return-void
.end method


# virtual methods
.method public blacklist asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 1

    .line 154
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 155
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 1

    .line 163
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 164
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPad()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public blacklist getSplitType()Lcom/samsung/android/sume/core/types/SplitType;
    .locals 1

    .line 90
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method public blacklist getUseExternalBufferComposer()Z
    .locals 2

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowPartialConnection()Z
    .locals 2

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isBatchIO()Z
    .locals 2

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInputOption()Z
    .locals 2

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isInputWithEvaluationValue()Z
    .locals 2

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isKeepFilterDatatype()Z
    .locals 2

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isOutputOption()Z
    .locals 2

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isWaitToReceiveAll()Z
    .locals 2

    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 0
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 173
    return-object p0
.end method

.method public blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 0
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "data"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/types/OptionBase;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 178
    return-object p0
.end method

.method public bridge synthetic blacklist set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "option"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "option",
            "data"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowPartialConnection(Z)V
    .locals 2
    .param p1, "allowPartialConnection"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowPartialConnection"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 111
    return-void
.end method

.method public blacklist setBatchIO(Z)V
    .locals 2
    .param p1, "batchIO"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batchIO"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 135
    return-void
.end method

.method public blacklist setInputWithEvaluationValue(Z)V
    .locals 2
    .param p1, "inputWithEvaluationValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputWithEvaluationValue"
        }
    .end annotation

    .line 150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 151
    return-void
.end method

.method public blacklist setKeepFilterDatatype(Z)V
    .locals 2
    .param p1, "keepFilterDatatype"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepFilterDatatype"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 127
    return-void
.end method

.method public blacklist setPad(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/types/PadType;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 103
    return-void
.end method

.method public blacklist setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V
    .locals 1
    .param p1, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splitType"
        }
    .end annotation

    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 95
    return-void
.end method

.method public blacklist setUseExternalBufferComposer(Z)V
    .locals 2
    .param p1, "useExternalBufferComposer"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useExternalBufferComposer"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 119
    return-void
.end method

.method public blacklist setWaitToReceiveAll(Z)V
    .locals 2
    .param p1, "waitToReceiveAll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waitToReceiveAll"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 143
    return-void
.end method
