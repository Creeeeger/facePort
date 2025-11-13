.class Landroid/os/Binder$IdentitySupplier;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentitySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/android/internal/os/SomeArgs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Binder$IdentitySupplier-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder$IdentitySupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Lcom/android/internal/os/SomeArgs;
    .locals 2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Binder$IdentitySupplier;->get()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    return-object v0
.end method
