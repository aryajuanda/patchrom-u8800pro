.class Landroid/net/wifi/WifiStateMachine$DriverStoppedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2795
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2799
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2800
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 2804
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2821
    const/4 v2, 0x0

    .line 2824
    :goto_0
    return v2

    .line 2806
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 2807
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2810
    .local v0, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2823
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    .end local v1           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :cond_0
    :goto_1
    const v2, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2824
    const/4 v2, 0x1

    goto :goto_0

    .line 2815
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2816
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z

    .line 2817
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2818
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2804
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
