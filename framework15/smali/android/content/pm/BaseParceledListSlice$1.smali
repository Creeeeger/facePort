.class Landroid/content/pm/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/BaseParceledListSlice;

.field final synthetic blacklist val$N:I

.field final synthetic blacklist val$callFlags:I

.field final synthetic blacklist val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iput p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v1}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_WA_PARCELED_LIST:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmStartIndexForWrite(Landroid/content/pm/BaseParceledListSlice;)I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3, v1}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmStartIndexForWrite(Landroid/content/pm/BaseParceledListSlice;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Requested twice for the same index"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_WA_PARCELED_LIST:Z

    if-nez v3, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :cond_3
    :goto_1
    iget v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ParceledListSlice"

    const/high16 v5, 0x10000

    if-ge v1, v3, :cond_5

    :try_start_1
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v3, v5, :cond_5

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v5}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fgetmList(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$smverifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v6, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iget v7, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v6, v5, p3, v7}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result v7

    if-lt v6, v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3, v2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$sfgetWARN_ELM_SIZE()I

    move-result v6

    add-int/2addr v6, v5

    if-lt v3, v6, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overly large reply size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    nop

    return v0

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v3, v2}, Landroid/content/pm/BaseParceledListSlice;->-$$Nest$fputmList(Landroid/content/pm/BaseParceledListSlice;Ljava/util/List;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to transfer null list, did transfer finish?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
