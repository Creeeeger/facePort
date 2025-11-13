.class public final synthetic Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/command/provider/CommandProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/command/provider/CommandProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/command/provider/CommandProvider;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/command/provider/CommandProvider$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/command/provider/CommandProvider;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/command/provider/CommandProvider;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
