.class public final Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/SubCommand;


# instance fields
.field public final cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

.field public final description:Ljava/lang/String;

.field public isPresent:Z

.field public final longName:Ljava/lang/String;

.field public validationStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/commandline/ParseableCommand;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    iget-object v0, p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->longName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->description:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->description:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->validationStatus:Z

    return-void
.end method


# virtual methods
.method public final describe(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->help(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getCmd()Lcom/android/systemui/statusbar/commandline/ParseableCommand;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->longName:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValidationStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->validationStatus:Z

    return p0
.end method

.method public final parseSubCommandArgs(Ljava/util/ListIterator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    iget-object v0, v0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->parser:Lcom/android/systemui/statusbar/commandline/CommandParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/commandline/CommandParser;->parseAsSubCommand(Ljava/util/ListIterator;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->validationStatus:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    return-void
.end method
