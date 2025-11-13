.class Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
.super Ljava/lang/Object;
.source "AndroidKeyStoreSpi.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEntriesEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

.field private blacklist mCurrentEntry:I

.field private blacklist mLastAlias:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V

    return-void
.end method

.method private blacklist getAndValidateNextBatch()V
    .locals 2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->-$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    aget-object v0, v0, v1

    iget-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    :cond_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Error while fetching entries."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
