.class public Landroid/database/sqlite/SQLiteDump$TeePrinter;
.super Ljava/lang/Object;
.source "SQLiteDump.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeePrinter"
.end annotation


# instance fields
.field blacklist p1:Landroid/util/Printer;

.field blacklist p2:Ljava/io/PrintStream;


# direct methods
.method public constructor blacklist <init>(Landroid/util/Printer;Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p1:Landroid/util/Printer;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p2:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public whitelist println(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p1:Landroid/util/Printer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p1:Landroid/util/Printer;

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p2:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDump$TeePrinter;->p2:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
